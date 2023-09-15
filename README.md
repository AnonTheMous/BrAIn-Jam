# BrAIn-Jam

**This README outlines the motivation and code to run your own fNIRS-based classifcation. Here are best practices in neuroscience pertaining to fNIRS and justifications for this. Through this repository we aim to make fNIRS research in HCI more formailzed and accessible. Enjoy!**

1. Setup you fNIRS equipment
2. Download and install Aurora (Free)
3. Download and install MATLAB (2022a or newer)
4. Run Aurora then Run MATLAB with run_exp_HbR_BJ.m this will stream all of your fNIRS data via OSC (local host, port:8888) to wherever you would like to collect it 

BrAIn Jam - fNIRS best practices

Functional near-infrared spectroscopy (fNIRS):
fNIRS systems can employ different techniques of illumination (Gervain, 2015), with continuous-wave (CW) fNIRS representing the most frequently adopted approach in cognitive neuroscience, whereby near-infrared light at two or three different wavelengths is constantly emitted from sources into the scalp and the light that the detectors collect index changes in concentrations of oxygenated (ΔHbO2) and deoxygenated (ΔHbR) hemoglobin in the brain. These local changes in concentrations of HbO2 and HbR in the brain are computed from light intensities at these wavelengths using the modified Beer-Lambert Law (Delpy et al., 1988; Kocsis, Herman, & Eke, 2006), which has long been used to account for light absorption and scattering in biological tissue: ∆A = ∆ c · ε · d · B, where A is light attenuation, ε is the absorption coefficient of the chromophore (e.g., HbR), c is the concentration of the chromophore, d is the distance between the points where light enters and leaves the tissue (~3cm), and B is the differential pathlength factor (DPF) for the effect of scattering on pathlength. Pairs of emitters (i.e., sources) and detectors form multiple NIRS channels. 

Cross-validation of fNIRS as a neuroimaging method: 
fNIRS has been cross-validated not only in terms of the temporal characteristics of hemodynamic changes but also the spatial localizations of these changes. For example, several combined fNIRS-fMRI studies have shown that these methodologies are highly comparable in this respect (e.g., Cui, Bryant, Bray, Glover, & Reiss, 2011; Heinzel et al., 2013; Noah et al., 2015; Okamoto et al., 2004; Sato et al., 2013). For example, Noah and colleagues (2015) developed a protocol for conducting multi-modal experiments with fNIRS and fMRI to ensure signal comparability, testing it using a complex yet naturalistic motor task, namely a dancing video game. Thus, fNIRS is a valid neuroimaging method that has temporal and spatial resolutions which represent an adequate compromise between that of fMRI and EEG, respectively; that is, it has greater temporal resolution than fMRI, but not EEG, and greater spatial resolution than EEG, but not fMRI (Ferrari & Quaresima, 2012).

‘Real-world’ neuroimaging:
There has been a considerable and rapid rise in technological advancements to the wearability and portability of fNIRS in recent years (see Pinti et al., 2018a, for review). These systems enable participants to freely perform tasks without constraints on the body and researchers to investigate situations that are difficult to contrive in laboratory settings (e.g., interpersonal interactions), providing an unprecedented opportunity to study complex cognition more naturalistically (e.g., Hirsch et al., 2018; Stuart, Belluscio, Quinn, & Mancini, 2019). For example, researchers have recently investigated prefrontal hemodynamics whilst participants walked around a real-world street environment (Burgess et al., 2022; Pinti et al., 2015) and others have investigated alterations in hemodynamics during slacklining (Seidel-Marzi et al., 2021). With respect to interpersonal interaction, Pinti and colleagues (2021) assessed face-to-face deception in interacting dyads, and Kelley and colleagues (2021) recently compared brain activity during eye-contact interactions with a humanoid robot (Kelley et al., 2021). In other words, the neuroscientific questions for which fNIRS is particularly well-suited are those predicting the involvement of brain regions in ecological tasks requiring unrestricted movement, human-to-human interaction, and so forth (Pinti et al., 2018b). 
Hemodynamic considerations in naturalistic situations:
Because greater ecological validity increases situational complexity, tasks that represent real-world activities will often require behaviors such as free-movement actions and language. Behaviors such as speech production (i.e., verbal communication) during interpersonal interactions and intentional body movements during complex motor tasks (e.g., playing an instrument) create marked changes in respiration compared to resting states (e.g., Scholkmann, Gerber, Wolf, & Wolf, 2013a, 2013b). Since respiration (e.g., changes in arterial CO2) is closely linked to cerebral oxygenation and hemodynamics, task-related changes in physiological systems such as respiration and heart rate represent sources of noise (e.g., system confounds) in fNIRS signals (Tachtsidis & Scholkmann, 2016). Filtering techniques during pre-processing, such as the use of band-pass filters together with multi-modal monitoring, typically address this issue in normal, laboratory-based experiments (see Pinti, Scholkmann, Hamilton, Burgess, & Tachtsidis, 2019, for review); however, researchers have found that HbR signals are typically less affected by systemic confounds (Dravida, Noah, Zhang, & Hirsch, 2017) and, therefore, have used this type of signal for interpreting results in ecologically valid neuroimaging paradigms (e.g., Crum et al., 2022; Hirsch et al., 2021; Hirsch, Zhang, Noah, & Ono, 2017).

Present study details:
The present study adopted a 50-channel layout that was configured using fOLD Toolbox (Guilherme et al., 2018) to collect data from subregions of the prefrontal cortex and of more posterior, temporoparietal regions that were identified from previous literature discussed above. More specifically, data were collected from two participants using a portable NIRSport2 system (NIRx, Berlin, Germany). This is a CW-fNIRS device that uses two wavelengths (760 and 850nm) with a sampling rate of 5.0863 Hz.
 

[The figure above showing fNIRS channels overlaid onto structural MRI depicts how fNIRS works, basically (i.e., penetration depth into cortex) and is not a necessary figure, but it looks nice and is not copyrighted. 
If there is no room then feel free to use it in the future for anything (I have a lot of these structural scans, because they are of my own brain haha.]   





Potentially interesting studies that have used fNIRS to investigate aspects of music processing:

Vanzella, P., Balardin, J. B., Furucho, R. A., Zimeo Morais, G. A., Braun Janzen, T., Sammler, D., & Sato, J. R. (2019). fNIRS responses in professional violinists while playing duets: evidence for distinct leader and follower roles at the brain level. Frontiers in psychology, 10, 164.

•	An fNIRS-based hyperscanning study on leader-follower interpersonal interaction and synchronization (coherence) whilst generating music.

Alves Heinze, R., Vanzella, P., Zimeo Morais, G. A., & Sato, J. R. (2019). Hand motor learning in a musical context and prefrontal cortex hemodynamic response: a functional near-infrared spectroscopy (fNIRS) study. Cognitive Processing, 20, 507-513.

•	Ecological experimental design that demonstrates the neural hallmark of skill-learning (i.e., plasticity via long-term potentiation) in the context of learning a musical instrument. 

Santosa, H., Hong, M. J., & Hong, K. S. (2014). Lateralization of music processing with noises in the auditory cortex: an fNIRS study. Frontiers in Behavioral Neuroscience, 8, 418.
Ferreri, L., Aucouturier, J. J., Muthalib, M., Bigand, E., & Bugaiska, A. (2013). Music improves verbal memory encoding while decreasing prefrontal cortex activity: an fNIRS study. Frontiers in human neuroscience, 7, 779.

•	Replicates fMRI research by showing that fNIRS can also detect activation changes in the areas expected to be critical for auditory processing. 

Bae, S., & Park, H. S. (2023). Development of immersive virtual reality-based hand rehabilitation system using a gesture-controlled rhythm game with vibrotactile feedback: an fNIRS pilot study. IEEE Transactions on Neural Systems and Rehabilitation Engineering.
Passive listening versus generating

•	A gesture-controlled rhythm game that can be used with fNIRS in VR to rehabilitate motor function.  













References

Burgess, P. W., Crum, J., Pinti, P., Aichelburg, C., Oliver, D., Lind, F., ... & Hamilton, A. (2022). Prefrontal cortical activation associated with prospective memory while walking around a real-world street environment. NeuroImage, 258, 119392.

Crum, J., Zhang, X., Noah, A., Hamilton, A., Tachtsidis, I., Burgess, P., & Hirsch, J. (2022). An approach to neuroimaging interpersonal interactions in mental health interventions. Biological Psychiatry: Cognitive Neuroscience and Neuroimaging. https://doi.org/10.1016/j.bpsc.2022.01.008

Cui, X., Bray, S., Bryant, D. M., Glover, G. H., & Reiss, A. L. (2011). A quantitative comparison of NIRS and fMRI across multiple cognitive tasks. NeuroImage, 54(4), 2808–2821. https://doi.org/10.1016/j.neuroimage.2010.10.069

Delpy, D. T., Cope, M., Van Der Zee, P., Arridge, S., Wray, S., & Wyatt, J. (1988). Estimation of optical pathlength through tissue from direct time of flight measurement. Physics in Medicine and Biology, 33(12), 1433–1442. https://doi.org/10.1088/0031-9155/33/12/008

Dravida, S., Noah, J. A., Zhang, X., & Hirsch, J. (2017). Comparison of oxyhemoglobin and deoxyhemoglobin signal reliability with and without global mean removal for digit manipulation motor tasks. Neurophotonics, 5(01), 1. https://doi.org/10.1117/1.nph.5.1.011006

Ferrari, M., & Quaresima, V. (2012). A brief review on the history of human functional near-infrared spectroscopy (fNIRS) development and fields of application. NeuroImage. https://doi.org/10.1016/j.neuroimage.2012.03.049

Gervain, J. (2015). Near-infrared spectroscopy. International Encyclopedia of the Social & Behavioral Sciences, 2(16) https://doi.org/10.1016/B978-0-08-097086-8.55061-2

Guilherme Augusto Zimeo Morais, Joana Bisol Balardin, and João Ricardo Sato. 2018. fNIRS optodes’ location decider (fOLD): a toolbox for probe arrangement guided by brain regions-of-interest. Scientific reports 8, 1 (2018), 1–11.

Heinzel, S., Haeussinger, F. B., Hahn, T., Ehlis, A. C., Plichta, M. M., & Fallgatter, A. J. (2013). Variability of (functional) hemodynamics as measured with simultaneous fNIRS and fMRI during intertemporal choice. NeuroImage, 71, 125–134. https://doi.org/10.1016/j.neuroimage.2012.12.074

Hirsch, J., Noah, J. A., Zhang, X., Dravida, S., & Ono, Y. (2018). A cross-brain neural mechanism for human-to-human verbal communication. Social Cognitive and Affective Neuroscience, 13(9), 907–920. https://doi.org/10.1093/scan/nsy070

Hirsch, J., Tiede, M., Zhang, X., Noah, J. A., Salama-Manteau, A., & Biriotti, M. (2021). Interpersonal agreement and disagreement during face-to-face dialogue: an fNIRS investigation. Frontiers in human neuroscience, 14, 601.

Hirsch, J., Zhang, X., Noah, J. A., & Ono, Y. (2017). Frontal temporal and parietal systems synchronize within and across brains during live eye-to-eye contact. NeuroImage, 157, 314–330. https://doi.org/10.1016/j.neuroimage.2017.06.018

Kelley, M. S., Noah, J. A., Zhang, X., Scassellati, B., & Hirsch, J. (2021). Comparison of human social brain activity during eye-contact with another human and a humanoid robot. Frontiers in Robotics and AI, 7, 599581.

Kocsis, L., Herman, P., & Eke, A. (2006). The modified Beer-Lambert law revisited. Physics in Medicine and Biology, 51(5). https://doi.org/10.1088/0031-9155/51/5/N02

Noah, J. A., Ono, Y., Nomoto, Y., Shimada, S., Tachibana, A., Zhang, X., … Hirsch, J. (2015). fMRI validation of fNIRS measurements during a naturalistic task. Journal of Visualized Experiments, 2015(100). https://doi.org/10.3791/52116

Okamoto, M., Dan, H., Shimizu, K., Takeo, K., Amita, T., Oda, I., … Dan, I. (2004). Multimodal assessment of cortical activation during apple peeling by NIRS and fMRI. NeuroImage, 21(4), 1275–1288. https://doi.org/10.1016/j.neuroimage.2003.12.003
Pinti, P., Devoto, A., Greenhalgh, I., Tachtsidis, I., Burgess, P. W., & de C Hamilton, A. F. (2021). The role of anterior prefrontal cortex (area 10) in face-to-face deception measured with fNIRS. Social Cognitive and Affective Neuroscience, 16(1-2), 129-142.

Pinti, P., Aichelburg, C., Gilbert, S., Hamilton, A., Hirsch, Burgess, W. P., & Tachtsidis, I. (2018a). A review on the use of wearable functional near-infrared spectroscopy in naturalistic environments. Japanese Psychological Research. https://doi: 10.1111/jpr.12206

Pinti, P., Aichelburg, C., Lind, F., Power, S., Swingler, E., Merla, A., … Tachtsidis, I. (2015). Using Fiberless, Wearable fNIRS to Monitor Brain Activity in Real-world Cognitive Tasks. Journal of Visualized Experiments, 2015(106), e53336–e53336. https://doi.org/10.3791/53336

Pinti, P., Scholkmann, F., Hamilton, A., Burgess, P., & Tachtsidis, I. (2019). Current status and issues regarding pre-processing of fNIRS neuroimaging data: An investigation of diverse signal filtering methods within a general linear model framework. Frontiers in Human Neuroscience, 12. https://doi.org/10.3389/fnhum.2018.00505

Pinti, P., Tachtsidis, I., Hamilton, A., Hirsch, J., Aichelburg, C., Gilbert, S., & Burgess, W. P. (2018b). The present and future use of functional near-infrared spectroscopy (fNIRS) for cognitive neuroscience. Annals of the New York Academy of Sciences. https://doi.org/10.1111/nyas.13948

Sato, H., Yahata, N., Funane, T., Takizawa, R., Katura, T., Atsumori, H., … Kasai, K. (2013). A NIRS-fMRI investigation of prefrontal cortex activity during a working memory task. NeuroImage, 83, 158–173. https://doi.org/10.1016/j.neuroimage.2013.06.043

Scholkmann, F., Gerber, U., Wolf, M., & Wolf, U. (2013). End-tidal CO2: An important parameter for a correct interpretation in functional brain studies using speech tasks. NeuroImage, 66, 71–79. https://doi.org/10.1016/j.neuroimage.2012.10.025

Scholkmann, F., Wolf, M., & Wolf, U. (2013). The effect of inner speech on arterial CO2 and cerebral hemodynamics and oxygenation: A functional NIRS study. In Advances in Experimental Medicine and Biology (Vol. 789, pp. 81–87). Springer New York LLC. https://doi.org/10.1007/978-1-4614-7411-1_12

Seidel-Marzi, O., Hähner, S., Ragert, P., & Carius, D. (2021). Task-related hemodynamic response alterations during slacklining: an fNIRS study in advanced slackliners. Frontiers in Neuroergonomics, 2, 4.

Stuart, S., Belluscio, V., Quinn, J. F., & Mancini, M. (2019). Pre-frontal cortical activity during walking and turning is reliable and differentiates across young, older adults and people with Parkinson's disease. Frontiers in neurology, 10, 536.

